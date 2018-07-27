default: opencontrol fedramp-templates

opencontrol:
	masonry get -d _data/

fedramp-templates: opencontrol
	cd _data/opencontrols && \
	compliance-masonry get -c opencontrol-ansible-tower.yaml && \
	cd - && \
	fedramp-templater fill _data/opencontrols/opencontrols/ files/fedramp/templates/FedRAMP-System-Security-Plan-Template-v2.1.docx files/fedramp/FedRAMP-System-Security-Plan-Ansible-Tower.docx && \
	rm -Rf _data/opencontrols/opencontrols/
	cd _data/opencontrols && \
	compliance-masonry get -c opencontrol-openshift.yaml && \
	cd - && \
	fedramp-templater fill _data/opencontrols/opencontrols/ files/fedramp/templates/FedRAMP-System-Security-Plan-Template-v2.1.docx files/fedramp/FedRAMP-System-Security-Plan-RedHat-OpenShift-Container-Platform-3.docx && \
	rm -Rf _data/opencontrols/opencontrols/
	cd _data/opencontrols && \
	compliance-masonry get -c opencontrol-openstack.yaml && \
	cd - && \
	fedramp-templater fill _data/opencontrols/opencontrols/ files/fedramp/templates/FedRAMP-System-Security-Plan-Template-v2.1.docx files/fedramp/FedRAMP-System-Security-Plan-OpenStack-Platform-13.docx && \
	rm -Rf _data/opencontrols/opencontrols/
